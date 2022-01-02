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

public class ApiStickerCollection extends BserObject {

    private int id;
    private long accessHash;
    private List<ApiStickerDescriptor> stickers;

    public ApiStickerCollection(int id, long accessHash, @NotNull List<ApiStickerDescriptor> stickers) {
        this.id = id;
        this.accessHash = accessHash;
        this.stickers = stickers;
    }

    public ApiStickerCollection() {

    }

    public int getId() {
        return this.id;
    }

    public long getAccessHash() {
        return this.accessHash;
    }

    @NotNull
    public List<ApiStickerDescriptor> getStickers() {
        return this.stickers;
    }

    @Override
    public void parse(BserValues values) throws IOException {
        this.id = values.getInt(1);
        this.accessHash = values.getLong(2);
        List<ApiStickerDescriptor> _stickers = new ArrayList<ApiStickerDescriptor>();
        for (int i = 0; i < values.getRepeatedCount(3); i ++) {
            _stickers.add(new ApiStickerDescriptor());
        }
        this.stickers = values.getRepeatedObj(3, _stickers);
        if (values.hasRemaining()) {
            setUnmappedObjects(values.buildRemaining());
        }
    }

    @Override
    public void serialize(BserWriter writer) throws IOException {
        writer.writeInt(1, this.id);
        writer.writeLong(2, this.accessHash);
        writer.writeRepeatedObj(3, this.stickers);
        if (this.getUnmappedObjects() != null) {
            SparseArray<Object> unmapped = this.getUnmappedObjects();
            for (int i = 0; i < unmapped.size(); i++) {
                int key = unmapped.keyAt(i);
                writer.writeUnmapped(key, unmapped.get(key));
            }
        }
    }

    @Override
    public String toString() {
        String res = "struct StickerCollection{";
        res += "id=" + this.id;
        res += ", accessHash=" + this.accessHash;
        res += ", stickers=" + this.stickers.size();
        res += "}";
        return res;
    }

}
