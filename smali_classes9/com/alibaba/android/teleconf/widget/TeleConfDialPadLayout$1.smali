.class final Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$1;
.super Ljava/lang/Object;
.source "TeleConfDialPadLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$1;->a:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 133
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$1;->a:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->a(Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 216
    :goto_0
    return-void

    .line 136
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$1;->a:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->a(Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;Z)Z

    .line 137
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$1;->a:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->a(Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;I)I

    .line 138
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$1;->a:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->b(Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 139
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$1;->a:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->b(Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 141
    :cond_1
    new-instance v0, Lccn;

    invoke-direct {v0}, Lccn;-><init>()V

    .line 142
    .local v0, "searchModel":Lccn;
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$1;->a:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->c(Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;)Ljava/lang/String;

    move-result-object v1

    .line 1041
    iput-object v1, v0, Lccn;->a:Ljava/lang/String;

    .line 143
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$1;->a:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->d(Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;)I

    move-result v1

    .line 1057
    iput v1, v0, Lccn;->c:I

    .line 2049
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lccn;->b:J

    .line 2065
    const/16 v1, 0x14

    iput v1, v0, Lccn;->d:I

    .line 146
    const-string/jumbo v1, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->d()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Searching "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3037
    iget-object v4, v0, Lccn;->a:Ljava/lang/String;

    .line 146
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$1$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$1$1;-><init>(Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$1;)V

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a(Lccn;Lcma;)V

    goto :goto_0
.end method
