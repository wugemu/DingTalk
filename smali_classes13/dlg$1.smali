.class final Ldlg$1;
.super Ljava/lang/Object;
.source "ForwardBatchController.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldlg;->a(Ldlk;Ljava/util/ArrayList;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Lcom/alibaba/wukong/im/Message;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;

.field final synthetic c:Lcom/alibaba/wukong/im/Message;

.field final synthetic d:Ldlk;

.field final synthetic e:I

.field final synthetic f:Ldlg;


# direct methods
.method constructor <init>(Ldlg;Ljava/util/ArrayList;Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;Lcom/alibaba/wukong/im/Message;Ldlk;I)V
    .locals 0
    .param p1, "this$0"    # Ldlg;

    .prologue
    .line 114
    iput-object p1, p0, Ldlg$1;->f:Ldlg;

    iput-object p2, p0, Ldlg$1;->a:Ljava/util/ArrayList;

    iput-object p3, p0, Ldlg$1;->b:Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;

    iput-object p4, p0, Ldlg$1;->c:Lcom/alibaba/wukong/im/Message;

    iput-object p5, p0, Ldlg$1;->d:Ldlk;

    iput p6, p0, Ldlg$1;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 128
    iget-object v0, p0, Ldlg$1;->f:Ldlg;

    iget-object v1, p0, Ldlg$1;->d:Ldlk;

    iget-object v2, p0, Ldlg$1;->a:Ljava/util/ArrayList;

    iget v3, p0, Ldlg$1;->e:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v0, v1, v2, v3}, Ldlg;->a(Ldlg;Ldlk;Ljava/util/ArrayList;I)V

    .line 129
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 114
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 114
    check-cast p1, Lcom/alibaba/wukong/im/Message;

    .line 1117
    if-eqz p1, :cond_0

    .line 1118
    iget-object v0, p0, Ldlg$1;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1119
    iget-object v0, p0, Ldlg$1;->b:Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;

    sget-object v1, Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;->ENCRYPT_FILE:Lcom/alibaba/android/dingtalkim/imtools/forward/ForwardType;

    if-ne v0, v1, :cond_0

    .line 1120
    iget-object v0, p0, Ldlg$1;->f:Ldlg;

    invoke-static {v0}, Ldlg;->a(Ldlg;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Ldlg$1;->c:Lcom/alibaba/wukong/im/Message;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1123
    :cond_0
    iget-object v0, p0, Ldlg$1;->f:Ldlg;

    iget-object v1, p0, Ldlg$1;->d:Ldlk;

    iget-object v2, p0, Ldlg$1;->a:Ljava/util/ArrayList;

    iget v3, p0, Ldlg$1;->e:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v0, v1, v2, v3}, Ldlg;->a(Ldlg;Ldlk;Ljava/util/ArrayList;I)V

    .line 114
    return-void
.end method
