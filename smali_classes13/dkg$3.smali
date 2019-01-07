.class final Ldkg$3;
.super Ljava/lang/Object;
.source "OAActionUtils.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldkg;->a(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;JLcom/alibaba/dingtalk/oabase/models/MicroAPPObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

.field final synthetic b:Lcom/alibaba/wukong/im/Conversation;

.field final synthetic c:J

.field final synthetic d:Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;JLcom/alibaba/dingtalk/oabase/models/MicroAPPObject;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 147
    iput-object p1, p0, Ldkg$3;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iput-object p2, p0, Ldkg$3;->b:Lcom/alibaba/wukong/im/Conversation;

    iput-wide p3, p0, Ldkg$3;->c:J

    iput-object p5, p0, Ldkg$3;->d:Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    iput-object p6, p0, Ldkg$3;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 147
    move-object v7, p1

    check-cast v7, Ljava/lang/String;

    .line 1150
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1151
    iget-object v1, p0, Ldkg$3;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iget-object v2, p0, Ldkg$3;->b:Lcom/alibaba/wukong/im/Conversation;

    const-string/jumbo v3, "new_todo"

    iget-wide v4, p0, Ldkg$3;->c:J

    iget-object v6, p0, Ldkg$3;->d:Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    iget-object v8, p0, Ldkg$3;->e:Ljava/lang/String;

    iget-object v0, p0, Ldkg$3;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->title()Ljava/lang/String;

    move-result-object v9

    invoke-static/range {v1 .. v9}, Ldkg;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;JLcom/alibaba/dingtalk/oabase/models/MicroAPPObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 162
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 158
    return-void
.end method
