.class Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut$1;
.super Ljava/lang/Object;
.source "ShortCut.java"

# interfaces
.implements Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut$AddShortCutCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut;->addShortCut(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut;

.field final synthetic val$callbackId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut$1;->val$callbackId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Boolean;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 112
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut$1;->val$callbackId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut;->access$000(Lcom/alibaba/lightapp/runtime/plugin/internal/ShortCut;ZLjava/lang/String;)V

    .line 113
    return-void
.end method
