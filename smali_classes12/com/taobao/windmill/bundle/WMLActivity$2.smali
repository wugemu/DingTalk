.class final Lcom/taobao/windmill/bundle/WMLActivity$2;
.super Ljava/lang/Object;
.source "WMLActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/windmill/bundle/WMLActivity;->finish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/taobao/windmill/bundle/WMLActivity;


# direct methods
.method constructor <init>(Lcom/taobao/windmill/bundle/WMLActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/windmill/bundle/WMLActivity;

    .prologue
    .line 610
    iput-object p1, p0, Lcom/taobao/windmill/bundle/WMLActivity$2;->a:Lcom/taobao/windmill/bundle/WMLActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 613
    iget-object v0, p0, Lcom/taobao/windmill/bundle/WMLActivity$2;->a:Lcom/taobao/windmill/bundle/WMLActivity;

    invoke-static {v0}, Lcom/taobao/windmill/bundle/WMLActivity;->access$200(Lcom/taobao/windmill/bundle/WMLActivity;)Ljrz;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 614
    iget-object v0, p0, Lcom/taobao/windmill/bundle/WMLActivity$2;->a:Lcom/taobao/windmill/bundle/WMLActivity;

    invoke-static {v0}, Lcom/taobao/windmill/bundle/WMLActivity;->access$200(Lcom/taobao/windmill/bundle/WMLActivity;)Ljrz;

    move-result-object v0

    invoke-interface {v0}, Ljrz;->i()V

    .line 616
    :cond_0
    return-void
.end method
