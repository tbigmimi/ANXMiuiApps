.class public Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;
.super Ljava/lang/Object;
.source "RemoverPaintData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mApplyDoodleMatrix:Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;

.field mBmpBounds:Landroid/graphics/RectF;

.field mCurves:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Curve;",
            ">;"
        }
    .end annotation
.end field

.field mDrawBitmapMatrix:Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;

.field mDrawableBounds:Landroid/graphics/RectF;

.field mExportBounds:Landroid/graphics/RectF;

.field mExportMatrix:Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;

.field mRemoverNNFData:Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverNNFData;

.field mViewBounds:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData$1;

    invoke-direct {v0}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData$1;-><init>()V

    sput-object v0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;->mExportBounds:Landroid/graphics/RectF;

    .line 30
    new-instance v0, Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;

    invoke-direct {v0}, Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;->mExportMatrix:Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;

    .line 32
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;->mBmpBounds:Landroid/graphics/RectF;

    .line 33
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;->mViewBounds:Landroid/graphics/RectF;

    .line 34
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;->mDrawableBounds:Landroid/graphics/RectF;

    .line 36
    new-instance v0, Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;

    invoke-direct {v0}, Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;->mDrawBitmapMatrix:Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;

    .line 37
    new-instance v0, Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;

    invoke-direct {v0}, Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;->mApplyDoodleMatrix:Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;->mCurves:Ljava/util/List;

    .line 40
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const-class v0, Landroid/graphics/RectF;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;->mExportBounds:Landroid/graphics/RectF;

    .line 62
    const-class v0, Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;->mExportMatrix:Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;

    .line 63
    const-class v0, Landroid/graphics/RectF;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;->mBmpBounds:Landroid/graphics/RectF;

    .line 64
    const-class v0, Landroid/graphics/RectF;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;->mViewBounds:Landroid/graphics/RectF;

    .line 65
    const-class v0, Landroid/graphics/RectF;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;->mDrawableBounds:Landroid/graphics/RectF;

    .line 66
    const-class v0, Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;->mDrawBitmapMatrix:Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;

    .line 67
    const-class v0, Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;->mApplyDoodleMatrix:Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;

    .line 68
    invoke-static {p1}, Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableGenericUtils;->readList(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;->mCurves:Ljava/util/List;

    .line 69
    const-class v0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverNNFData;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverNNFData;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;->mRemoverNNFData:Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverNNFData;

    .line 70
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 49
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;->mExportBounds:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 50
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;->mExportMatrix:Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 51
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;->mBmpBounds:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 52
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;->mViewBounds:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 53
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;->mDrawableBounds:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 54
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;->mDrawBitmapMatrix:Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 55
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;->mApplyDoodleMatrix:Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 56
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;->mCurves:Ljava/util/List;

    invoke-static {p1, p2, v0}, Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableGenericUtils;->writeList(Landroid/os/Parcel;ILjava/util/List;)V

    .line 57
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverPaintData;->mRemoverNNFData:Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverNNFData;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 58
    return-void
.end method
