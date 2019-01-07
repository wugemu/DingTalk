.class final Leab$2;
.super Ljava/lang/Object;
.source "PushTaskListHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leab;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskListObject;

.field final synthetic b:Leab;


# direct methods
.method constructor <init>(Leab;Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskListObject;)V
    .locals 0
    .param p1, "this$0"    # Leab;

    .prologue
    .line 168
    iput-object p1, p0, Leab$2;->b:Leab;

    iput-object p2, p0, Leab$2;->a:Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskListObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 172
    :try_start_0
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v1

    iget-object v2, p0, Leab$2;->b:Leab;

    iget-object v2, v2, Leab;->c:Landroid/app/Activity;

    iget-object v3, p0, Leab$2;->a:Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskListObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskListObject;->actionUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Landroid/net/Uri;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    :goto_0
    return-void

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
