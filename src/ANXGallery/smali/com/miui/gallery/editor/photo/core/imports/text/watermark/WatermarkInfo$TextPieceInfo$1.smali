.class final Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo$TextPieceInfo$1;
.super Ljava/lang/Object;
.source "WatermarkInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo$TextPieceInfo;
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
        "Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo$TextPieceInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo$TextPieceInfo;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 87
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo$TextPieceInfo;

    invoke-direct {v0, p1}, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo$TextPieceInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo$TextPieceInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo$TextPieceInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo$TextPieceInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 92
    new-array v0, p1, [Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo$TextPieceInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo$TextPieceInfo$1;->newArray(I)[Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo$TextPieceInfo;

    move-result-object v0

    return-object v0
.end method
