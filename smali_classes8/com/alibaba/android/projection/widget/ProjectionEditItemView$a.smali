.class final Lcom/alibaba/android/projection/widget/ProjectionEditItemView$a;
.super Landroid/text/method/ReplacementTransformationMethod;
.source "ProjectionEditItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/projection/widget/ProjectionEditItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/projection/widget/ProjectionEditItemView;


# direct methods
.method private constructor <init>(Lcom/alibaba/android/projection/widget/ProjectionEditItemView;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/alibaba/android/projection/widget/ProjectionEditItemView$a;->a:Lcom/alibaba/android/projection/widget/ProjectionEditItemView;

    invoke-direct {p0}, Landroid/text/method/ReplacementTransformationMethod;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/android/projection/widget/ProjectionEditItemView;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/android/projection/widget/ProjectionEditItemView;

    .prologue
    .line 176
    invoke-direct {p0, p1}, Lcom/alibaba/android/projection/widget/ProjectionEditItemView$a;-><init>(Lcom/alibaba/android/projection/widget/ProjectionEditItemView;)V

    return-void
.end method


# virtual methods
.method protected final getOriginal()[C
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 180
    const/16 v1, 0x1a

    new-array v0, v1, [C

    fill-array-data v0, :array_0

    .line 181
    .local v0, "aa":[C
    return-object v0

    .line 180
    nop

    :array_0
    .array-data 2
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
    .end array-data
.end method

.method protected final getReplacement()[C
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 186
    const/16 v1, 0x1a

    new-array v0, v1, [C

    fill-array-data v0, :array_0

    .line 187
    .local v0, "cc":[C
    return-object v0

    .line 186
    nop

    :array_0
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
    .end array-data
.end method
