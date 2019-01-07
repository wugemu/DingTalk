.class final Lcom/taobao/windmill/bundle/WMLActivity$1$2;
.super Ljava/lang/Object;
.source "WMLActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/windmill/bundle/WMLActivity$1;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/windmill/bundle/container/core/AppInfoModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/taobao/windmill/bundle/WMLActivity$1;


# direct methods
.method constructor <init>(Lcom/taobao/windmill/bundle/WMLActivity$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/taobao/windmill/bundle/WMLActivity$1;

    .prologue
    .line 253
    iput-object p1, p0, Lcom/taobao/windmill/bundle/WMLActivity$1$2;->a:Lcom/taobao/windmill/bundle/WMLActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/taobao/windmill/bundle/WMLActivity$1$2;->a:Lcom/taobao/windmill/bundle/WMLActivity$1;

    iget-object v0, v0, Lcom/taobao/windmill/bundle/WMLActivity$1;->a:Lcom/taobao/windmill/bundle/WMLActivity;

    invoke-virtual {v0}, Lcom/taobao/windmill/bundle/WMLActivity;->finish()V

    .line 257
    return-void
.end method
