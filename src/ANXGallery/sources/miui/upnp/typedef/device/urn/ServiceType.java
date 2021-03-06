package miui.upnp.typedef.device.urn;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import miui.upnp.typedef.device.urn.Urn.Type;
import miui.upnp.typedef.device.urn.schemas.Schemas;

public class ServiceType extends Urn implements Parcelable {
    public static final Creator<ServiceType> CREATOR = new Creator<ServiceType>() {
        public ServiceType createFromParcel(Parcel in) {
            return new ServiceType(in);
        }

        public ServiceType[] newArray(int size) {
            return new ServiceType[size];
        }
    };

    public ServiceType(String subType, String version) {
        super.setType(Type.SERVICE);
        super.setDomain(Schemas.UPNP);
        super.setSubType(subType);
        super.setVersion(version);
    }

    public static ServiceType create(String string) {
        ServiceType thiz = new ServiceType();
        if (thiz.parse(string)) {
            return thiz;
        }
        return null;
    }

    public boolean parse(String string) {
        boolean ret = super.parse(string);
        if (ret && getType() == Type.SERVICE) {
            return true;
        }
        return ret;
    }

    public String getName() {
        return getSubType();
    }

    public ServiceType(Parcel in) {
        readFromParcel(in);
    }

    public void readFromParcel(Parcel in) {
        parse(in.readString());
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel out, int flags) {
        out.writeString(toString());
    }
}
