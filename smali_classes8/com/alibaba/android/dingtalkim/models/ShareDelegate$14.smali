.class final Lcom/alibaba/android/dingtalkim/models/ShareDelegate$14;
.super Ljava/lang/Object;
.source "ShareDelegate.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkim/models/ShareDelegate$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/models/ShareDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lcom/alibaba/wukong/im/Conversation;

.field final synthetic c:Lcom/alibaba/android/dingtalkim/models/ShareDelegate;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/models/ShareDelegate;Landroid/widget/EditText;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/models/ShareDelegate;

    .prologue
    .line 303
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$14;->c:Lcom/alibaba/android/dingtalkim/models/ShareDelegate;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$14;->a:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$14;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 307
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$14;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 309
    .local v0, "otherWords":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$14;->c:Lcom/alibaba/android/dingtalkim/models/ShareDelegate;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$14;->b:Lcom/alibaba/wukong/im/Conversation;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$14;->c:Lcom/alibaba/android/dingtalkim/models/ShareDelegate;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->d(Lcom/alibaba/android/dingtalkim/models/ShareDelegate;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->a(Lcom/alibaba/android/dingtalkim/models/ShareDelegate;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    return-void
.end method
