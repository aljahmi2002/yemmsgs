package im.actor.core.api;
/*
 *  Generated by the Actor API Scheme generator.  DO NOT EDIT!
 */

import im.actor.runtime.bser.*;
import im.actor.runtime.collections.*;
import static im.actor.runtime.bser.Utils.*;
import im.actor.core.network.parser.*;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.annotations.NotNull;
import com.google.j2objc.annotations.ObjectiveCName;
import java.io.IOException;
import java.util.List;
import java.util.ArrayList;

public class ApiICEServer extends BserObject {

    private String url;
    private String username;
    private String credential;

    public ApiICEServer(@NotNull String url, @Nullable String username, @Nullable String credential) {
        this.url = url;
        this.username = username;
        this.credential = credential;
    }

    public ApiICEServer() {

    }

    @NotNull
    public String getUrl() {
        return this.url;
    }

    @Nullable
    public String getUsername() {
        return this.username;
    }

    @Nullable
    public String getCredential() {
        return this.credential;
    }

    @Override
    public void parse(BserValues values) throws IOException {
        this.url = values.getString(1);
        this.username = values.optString(2);
        this.credential = values.optString(3);
    }

    @Override
    public void serialize(BserWriter writer) throws IOException {
        if (this.url == null) {
            throw new IOException();
        }
        writer.writeString(1, this.url);
        if (this.username != null) {
            writer.writeString(2, this.username);
        }
        if (this.credential != null) {
            writer.writeString(3, this.credential);
        }
    }

    @Override
    public String toString() {
        String res = "struct ICEServer{";
        res += "url=" + this.url;
        res += ", username=" + this.username;
        res += "}";
        return res;
    }

}
