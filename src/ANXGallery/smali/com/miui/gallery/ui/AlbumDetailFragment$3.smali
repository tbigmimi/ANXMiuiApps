.class synthetic Lcom/miui/gallery/ui/AlbumDetailFragment$3;
.super Ljava/lang/Object;
.source "AlbumDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/AlbumDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$miui$gallery$widget$SortByHeader$SortBy:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 434
    invoke-static {}, Lcom/miui/gallery/widget/SortByHeader$SortBy;->values()[Lcom/miui/gallery/widget/SortByHeader$SortBy;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/miui/gallery/ui/AlbumDetailFragment$3;->$SwitchMap$com$miui$gallery$widget$SortByHeader$SortBy:[I

    :try_start_0
    sget-object v0, Lcom/miui/gallery/ui/AlbumDetailFragment$3;->$SwitchMap$com$miui$gallery$widget$SortByHeader$SortBy:[I

    sget-object v1, Lcom/miui/gallery/widget/SortByHeader$SortBy;->NAME:Lcom/miui/gallery/widget/SortByHeader$SortBy;

    invoke-virtual {v1}, Lcom/miui/gallery/widget/SortByHeader$SortBy;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lcom/miui/gallery/ui/AlbumDetailFragment$3;->$SwitchMap$com$miui$gallery$widget$SortByHeader$SortBy:[I

    sget-object v1, Lcom/miui/gallery/widget/SortByHeader$SortBy;->SIZE:Lcom/miui/gallery/widget/SortByHeader$SortBy;

    invoke-virtual {v1}, Lcom/miui/gallery/widget/SortByHeader$SortBy;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
