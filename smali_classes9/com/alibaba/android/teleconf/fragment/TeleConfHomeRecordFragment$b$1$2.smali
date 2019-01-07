.class final Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b$1$2;
.super Ljava/lang/Object;
.source "TeleConfHomeRecordFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:J

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/Boolean;

.field final synthetic f:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b$1;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b$1;

    .prologue
    .line 3140
    iput-object p1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b$1$2;->f:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b$1;

    iput-object p2, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b$1$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b$1$2;->b:Ljava/lang/String;

    iput-wide p4, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b$1$2;->c:J

    iput-object p6, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b$1$2;->d:Ljava/lang/String;

    iput-object p7, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b$1$2;->e:Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 3143
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 3144
    .local v7, "icons":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;>;"
    new-instance v8, Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;

    invoke-direct {v8}, Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;-><init>()V

    .line 3145
    .local v8, "iconObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b$1$2;->a:Ljava/lang/String;

    iput-object v0, v8, Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;->nick:Ljava/lang/String;

    .line 3146
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b$1$2;->a:Ljava/lang/String;

    iput-object v0, v8, Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;->name:Ljava/lang/String;

    .line 3147
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b$1$2;->b:Ljava/lang/String;

    iput-object v0, v8, Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;->mediaId:Ljava/lang/String;

    .line 3148
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3151
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b$1$2;->f:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b$1;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b$1;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b$1$2;->f:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b$1;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b$1;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b;->d(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b;)Ljava/util/List;

    move-result-object v1

    iget-wide v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b$1$2;->c:J

    iget-object v4, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b$1$2;->a:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b$1$2;->d:Ljava/lang/String;

    iget-object v6, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b$1$2;->e:Ljava/lang/Boolean;

    invoke-static/range {v0 .. v7}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->a(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/List;)V

    .line 3157
    return-void
.end method
