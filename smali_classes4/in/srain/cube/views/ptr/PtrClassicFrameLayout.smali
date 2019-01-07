.class public Lin/srain/cube/views/ptr/PtrClassicFrameLayout;
.super Lin/srain/cube/views/ptr/PtrFrameLayout;
.source "PtrClassicFrameLayout.java"


# instance fields
.field private a:Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lin/srain/cube/views/ptr/PtrFrameLayout;-><init>(Landroid/content/Context;)V

    .line 12
    invoke-direct {p0}, Lin/srain/cube/views/ptr/PtrClassicFrameLayout;->c()V

    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lin/srain/cube/views/ptr/PtrFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    invoke-direct {p0}, Lin/srain/cube/views/ptr/PtrClassicFrameLayout;->c()V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Lin/srain/cube/views/ptr/PtrFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    invoke-direct {p0}, Lin/srain/cube/views/ptr/PtrClassicFrameLayout;->c()V

    .line 23
    return-void
.end method

.method private c()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 26
    new-instance v0, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;

    invoke-virtual {p0}, Lin/srain/cube/views/ptr/PtrClassicFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lin/srain/cube/views/ptr/PtrClassicFrameLayout;->a:Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;

    .line 27
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrClassicFrameLayout;->a:Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;

    invoke-virtual {p0, v0}, Lin/srain/cube/views/ptr/PtrClassicFrameLayout;->setHeaderView(Landroid/view/View;)V

    .line 28
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrClassicFrameLayout;->a:Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;

    invoke-virtual {p0, v0}, Lin/srain/cube/views/ptr/PtrClassicFrameLayout;->a(Lkey;)V

    .line 29
    return-void
.end method


# virtual methods
.method public getHeader()Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrClassicFrameLayout;->a:Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;

    return-object v0
.end method

.method public setLastUpdateTimeKey(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 41
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrClassicFrameLayout;->a:Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrClassicFrameLayout;->a:Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;

    invoke-virtual {v0, p1}, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->setLastUpdateTimeKey(Ljava/lang/String;)V

    .line 44
    :cond_0
    return-void
.end method

.method public setLastUpdateTimeRelateObject(Ljava/lang/Object;)V
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 52
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrClassicFrameLayout;->a:Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrClassicFrameLayout;->a:Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;

    invoke-virtual {v0, p1}, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->setLastUpdateTimeRelateObject(Ljava/lang/Object;)V

    .line 55
    :cond_0
    return-void
.end method
