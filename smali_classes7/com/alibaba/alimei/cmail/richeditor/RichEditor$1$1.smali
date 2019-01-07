.class final Lcom/alibaba/alimei/cmail/richeditor/RichEditor$1$1;
.super Ljava/lang/Object;
.source "RichEditor.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/cmail/richeditor/RichEditor$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/cmail/richeditor/RichEditor$1;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/cmail/richeditor/RichEditor$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/alimei/cmail/richeditor/RichEditor$1;

    .prologue
    .line 250
    iput-object p1, p0, Lcom/alibaba/alimei/cmail/richeditor/RichEditor$1$1;->a:Lcom/alibaba/alimei/cmail/richeditor/RichEditor$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 250
    .line 1253
    const-string/jumbo v0, "RichEditor"

    const-string/jumbo v1, "insertAts success"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1254
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/richeditor/RichEditor$1$1;->a:Lcom/alibaba/alimei/cmail/richeditor/RichEditor$1;

    iget-object v0, v0, Lcom/alibaba/alimei/cmail/richeditor/RichEditor$1;->c:Lcom/alibaba/alimei/cmail/richeditor/RichEditor;

    invoke-static {v0}, Lcom/alibaba/alimei/cmail/richeditor/RichEditor;->a(Lcom/alibaba/alimei/cmail/richeditor/RichEditor;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/cmail/richeditor/RichEditor$1$1;->a:Lcom/alibaba/alimei/cmail/richeditor/RichEditor$1;

    iget-object v1, v1, Lcom/alibaba/alimei/cmail/richeditor/RichEditor$1;->b:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 250
    return-void
.end method
