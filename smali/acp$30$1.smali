.class final Lacp$30$1;
.super Ljava/lang/Object;
.source "MailDialogManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lacp$30;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/im/Conversation;

.field final synthetic b:Lacp$30;


# direct methods
.method constructor <init>(Lacp$30;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 0
    .param p1, "this$1"    # Lacp$30;

    .prologue
    .line 326
    iput-object p1, p0, Lacp$30$1;->b:Lacp$30;

    iput-object p2, p0, Lacp$30$1;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 329
    iget-object v0, p0, Lacp$30$1;->b:Lacp$30;

    iget-object v0, v0, Lacp$30;->c:Lacp;

    iget-object v1, p0, Lacp$30$1;->a:Lcom/alibaba/wukong/im/Conversation;

    iget-object v2, p0, Lacp$30$1;->b:Lacp$30;

    iget-object v2, v2, Lacp$30;->b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-static {v0, v1, v2}, Lacp;->a(Lacp;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V

    .line 330
    return-void
.end method
