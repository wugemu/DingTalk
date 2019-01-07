.class final Lin/srain/cube/views/ptr/header/MaterialHeader$2;
.super Lkfa;
.source "MaterialHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/srain/cube/views/ptr/header/MaterialHeader;->setPtrFrameLayout(Lin/srain/cube/views/ptr/PtrFrameLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lin/srain/cube/views/ptr/header/MaterialHeader;


# direct methods
.method constructor <init>(Lin/srain/cube/views/ptr/header/MaterialHeader;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lin/srain/cube/views/ptr/header/MaterialHeader$2;->c:Lin/srain/cube/views/ptr/header/MaterialHeader;

    invoke-direct {p0}, Lkfa;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 52
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialHeader$2;->c:Lin/srain/cube/views/ptr/header/MaterialHeader;

    iget-object v1, p0, Lin/srain/cube/views/ptr/header/MaterialHeader$2;->c:Lin/srain/cube/views/ptr/header/MaterialHeader;

    invoke-static {v1}, Lin/srain/cube/views/ptr/header/MaterialHeader;->c(Lin/srain/cube/views/ptr/header/MaterialHeader;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lin/srain/cube/views/ptr/header/MaterialHeader;->startAnimation(Landroid/view/animation/Animation;)V

    .line 53
    return-void
.end method
