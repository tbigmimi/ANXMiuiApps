.class final Lcom/xiaomi/settingsdk/backup/data/DataPackage$1;
.super Ljava/lang/Object;
.source "DataPackage.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/settingsdk/backup/data/DataPackage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/xiaomi/settingsdk/backup/data/DataPackage;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/xiaomi/settingsdk/backup/data/DataPackage;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 168
    .local v0, "dataPackageBundle":Landroid/os/Bundle;
    invoke-static {v0}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->access$000(Landroid/os/Bundle;)Lcom/xiaomi/settingsdk/backup/data/DataPackage;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Lcom/xiaomi/settingsdk/backup/data/DataPackage$1;->createFromParcel(Landroid/os/Parcel;)Lcom/xiaomi/settingsdk/backup/data/DataPackage;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/xiaomi/settingsdk/backup/data/DataPackage;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 162
    new-array v0, p1, [Lcom/xiaomi/settingsdk/backup/data/DataPackage;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Lcom/xiaomi/settingsdk/backup/data/DataPackage$1;->newArray(I)[Lcom/xiaomi/settingsdk/backup/data/DataPackage;

    move-result-object v0

    return-object v0
.end method
