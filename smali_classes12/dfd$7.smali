.class final Ldfd$7;
.super Ljava/lang/Object;
.source "RecruitmentChatPlugin.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldfd;->a(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Ldfd;


# direct methods
.method constructor <init>(Ldfd;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Ldfd;

    .prologue
    .line 247
    iput-object p1, p0, Ldfd$7;->b:Ldfd;

    iput-object p2, p0, Ldfd$7;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 250
    iget-object v1, p0, Ldfd$7;->b:Ldfd;

    iget-object v1, v1, Ldfd;->b:Lcom/alibaba/wukong/im/Conversation;

    const-string/jumbo v4, "im_campus_resume_hr_corp_id"

    invoke-interface {v1, v4}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 251
    .local v0, "corpId":Ljava/lang/String;
    iget-object v1, p0, Ldfd$7;->b:Ldfd;

    iget-object v1, v1, Ldfd;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->getPeerId()J

    move-result-wide v2

    .line 252
    .local v2, "uid":J
    invoke-static {}, Ldym;->a()Ldyl;

    move-result-object v4

    new-instance v1, Ldfd$7$1;

    invoke-direct {v1, p0}, Ldfd$7$1;-><init>(Ldfd$7;)V

    const-class v5, Lcma;

    iget-object v6, p0, Ldfd$7;->a:Landroid/app/Activity;

    invoke-static {v1, v5, v6}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcma;

    invoke-interface {v4, v0, v2, v3, v1}, Ldyl;->a(Ljava/lang/String;JLcma;)V

    .line 265
    return-void
.end method
