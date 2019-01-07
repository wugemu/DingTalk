.class public final Ldjn$1;
.super Ljava/lang/Object;
.source "EmotionGuideChatManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldjn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/im/Message;

.field final synthetic b:I

.field final synthetic c:Ldjn$b;

.field final synthetic d:Landroid/app/Activity;

.field final synthetic e:J

.field final synthetic f:Ldjn;


# direct methods
.method public constructor <init>(Ldjn;Lcom/alibaba/wukong/im/Message;ILdjn$b;Landroid/app/Activity;J)V
    .locals 0
    .param p1, "this$0"    # Ldjn;

    .prologue
    .line 101
    iput-object p1, p0, Ldjn$1;->f:Ldjn;

    iput-object p2, p0, Ldjn$1;->a:Lcom/alibaba/wukong/im/Message;

    iput p3, p0, Ldjn$1;->b:I

    iput-object p4, p0, Ldjn$1;->c:Ldjn$b;

    iput-object p5, p0, Ldjn$1;->d:Landroid/app/Activity;

    iput-wide p6, p0, Ldjn$1;->e:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 104
    iget-object v1, p0, Ldjn$1;->f:Ldjn;

    iget-object v5, p0, Ldjn$1;->a:Lcom/alibaba/wukong/im/Message;

    iget v4, p0, Ldjn$1;->b:I

    .line 1123
    const-string/jumbo v3, ""

    .line 1124
    const-string/jumbo v1, ""

    .line 1125
    sget v6, Ldjn$b;->a:I

    if-ne v4, v6, :cond_0

    .line 1126
    const-string/jumbo v3, "Button-first_time_see_gif_tail"

    .line 1127
    const-string/jumbo v1, "a2o5v.12290095"

    const-string/jumbo v4, "first_time_see_gif_tail"

    invoke-static {v1, v4}, Leat;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v4, v3

    move-object v3, v1

    .line 1134
    :goto_0
    if-eqz v5, :cond_2

    .line 1135
    invoke-interface {v5}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    invoke-static {v1}, Leat;->a(Lcom/alibaba/wukong/im/Conversation;)Ljava/util/Map;

    move-result-object v1

    .line 1136
    const-string/jumbo v5, "spm-url"

    invoke-interface {v1, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1139
    :goto_1
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v3

    const-string/jumbo v5, "Page_Chat_Detail"

    invoke-interface {v3, v5, v4, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 105
    iget-object v1, p0, Ldjn$1;->c:Ldjn$b;

    invoke-static {v1}, Ldjn$b;->d(Ldjn$b;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 107
    iget-object v1, p0, Ldjn$1;->c:Ldjn$b;

    invoke-static {v1}, Ldjn$b;->d(Ldjn$b;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 108
    .local v0, "uri":Landroid/net/Uri;
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v1

    iget-object v3, p0, Ldjn$1;->d:Landroid/app/Activity;

    invoke-virtual {v1, v3, v0, v2}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 113
    .end local v0    # "uri":Landroid/net/Uri;
    :goto_2
    return-void

    .line 1128
    :cond_0
    sget v6, Ldjn$b;->b:I

    if-ne v4, v6, :cond_3

    .line 1129
    const-string/jumbo v3, "Button-festival_gif_tail"

    .line 1130
    const-string/jumbo v1, "a2o5v.12290095"

    const-string/jumbo v4, "festival_gif_tail"

    invoke-static {v1, v4}, Leat;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v4, v3

    move-object v3, v1

    goto :goto_0

    .line 2054
    :cond_1
    invoke-static {}, Ldiy$a;->a()Ldiy;

    move-result-object v1

    .line 111
    iget-wide v2, p0, Ldjn$1;->e:J

    invoke-virtual {v1, v2, v3}, Ldiy;->a(J)V

    goto :goto_2

    :cond_2
    move-object v1, v2

    goto :goto_1

    :cond_3
    move-object v4, v3

    move-object v3, v1

    goto :goto_0
.end method
