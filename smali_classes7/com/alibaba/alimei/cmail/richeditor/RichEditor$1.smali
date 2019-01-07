.class final Lcom/alibaba/alimei/cmail/richeditor/RichEditor$1;
.super Ljava/lang/Object;
.source "RichEditor.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/cmail/richeditor/RichEditor;
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Lcom/alibaba/alimei/cmail/richeditor/RichEditor;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/cmail/richeditor/RichEditor;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/cmail/richeditor/RichEditor;

    .prologue
    .line 246
    iput-object p1, p0, Lcom/alibaba/alimei/cmail/richeditor/RichEditor$1;->c:Lcom/alibaba/alimei/cmail/richeditor/RichEditor;

    iput-object p2, p0, Lcom/alibaba/alimei/cmail/richeditor/RichEditor$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/alimei/cmail/richeditor/RichEditor$1;->b:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 246
    .line 1249
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/richeditor/RichEditor$1;->c:Lcom/alibaba/alimei/cmail/richeditor/RichEditor;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cmail/richeditor/RichEditor;->requestFocus()Z

    .line 1250
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/richeditor/RichEditor$1;->c:Lcom/alibaba/alimei/cmail/richeditor/RichEditor;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "javascript:RE.insertAts("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/alimei/cmail/richeditor/RichEditor$1;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alibaba/alimei/cmail/richeditor/RichEditor$1$1;

    invoke-direct {v2, p0}, Lcom/alibaba/alimei/cmail/richeditor/RichEditor$1$1;-><init>(Lcom/alibaba/alimei/cmail/richeditor/RichEditor$1;)V

    invoke-static {v0, v1, v2}, Lcom/alibaba/alimei/cmail/richeditor/RichEditor;->a(Lcom/alibaba/alimei/cmail/richeditor/RichEditor;Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 246
    return-void
.end method
