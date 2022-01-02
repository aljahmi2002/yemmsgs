package im.actor.core.api.updates;
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
import im.actor.core.api.*;

public class UpdateGroupShortNameChanged extends Update {

    public static final int HEADER = 0xa44;
    public static UpdateGroupShortNameChanged fromBytes(byte[] data) throws IOException {
        return Bser.parse(new UpdateGroupShortNameChanged(), data);
    }

    private int groupId;
    private String shortName;

    public UpdateGroupShortNameChanged(int groupId, @Nullable String shortName) {
        this.groupId = groupId;
        this.shortName = shortName;
    }

    public UpdateGroupShortNameChanged() {

    }

    public int getGroupId() {
        return this.groupId;
    }

    @Nullable
    public String getShortName() {
        return this.shortName;
    }

    @Override
    public void parse(BserValues values) throws IOException {
        this.groupId = values.getInt(1);
        this.shortName = values.optString(2);
    }

    @Override
    public void serialize(BserWriter writer) throws IOException {
        writer.writeInt(1, this.groupId);
        if (this.shortName != null) {
            writer.writeString(2, this.shortName);
        }
    }

    @Override
    public String toString() {
        String res = "update GroupShortNameChanged{";
        res += "groupId=" + this.groupId;
        res += ", shortName=" + this.shortName;
        res += "}";
        return res;
    }

    @Override
    public int getHeaderKey() {
        return HEADER;
    }
}
