.class final Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl$10;
.super Ljava/lang/Object;
.source "TelConfInterfaceImpl.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl;->b(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/alibaba/wukong/im/Conversation;

.field final synthetic c:Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl;Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl;

    .prologue
    .line 279
    iput-object p1, p0, Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl$10;->c:Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl;

    iput-object p2, p0, Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl$10;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl$10;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 282
    invoke-static {}, Levm;->a()Levm;

    move-result-object v0

    invoke-virtual {v0}, Levm;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl$10;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Leuj$l;->dt_conference_start_btntitle_videoconf:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 284
    .local v2, "title":Ljava/lang/String;
    iget-object v0, p0, Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl$10;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Leuj$l;->conf_txt_conference_launch_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 285
    .local v3, "btnText":Ljava/lang/String;
    invoke-static {}, Lewq;->a()Lewq;

    invoke-static {}, Lewq;->b()I

    move-result v4

    .line 287
    .local v4, "memCount":I
    iget-object v0, p0, Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl$10;->c:Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl$10;->a:Landroid/app/Activity;

    iget-object v5, p0, Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl$10;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v5}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "ACTIVITY_IDENTIFY_VIDEO_CONFERENCE"

    invoke-static/range {v0 .. v6}, Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl;->a(Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 289
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "chat_calllist_videocall_click"

    invoke-interface {v0, v7, v1, v7}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 293
    .end local v2    # "title":Ljava/lang/String;
    .end local v3    # "btnText":Ljava/lang/String;
    .end local v4    # "memCount":I
    :goto_0
    return-void

    .line 291
    :cond_0
    sget v0, Leuj$l;->dt_conference_current_video_ongoing:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_0
.end method
