.class final Lgli$2;
.super Ljava/lang/Object;
.source "SpaceForwardManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgli;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgli;


# direct methods
.method constructor <init>(Lgli;)V
    .locals 0
    .param p1, "this$0"    # Lgli;

    .prologue
    .line 162
    iput-object p1, p0, Lgli$2;->a:Lgli;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 165
    iget-object v0, p0, Lgli$2;->a:Lgli;

    iget-object v1, p0, Lgli$2;->a:Lgli;

    .line 1040
    iget-object v1, v1, Lgli;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 165
    iget-object v2, p0, Lgli$2;->a:Lgli;

    .line 2040
    iget-object v2, v2, Lgli;->c:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .line 3040
    invoke-virtual {v0, v1, v2}, Lgli;->a(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)V

    .line 166
    return-void
.end method
