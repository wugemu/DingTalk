.class public final Lcom/alibaba/android/teleconf/widget/ContactFloatView$1;
.super Ljava/lang/Object;
.source "ContactFloatView.java"

# interfaces
.implements Lewh$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/widget/ContactFloatView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Leym;

.field final synthetic b:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

.field final synthetic c:Lcom/alibaba/android/teleconf/widget/ContactFloatView;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/teleconf/widget/ContactFloatView;Leym;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/widget/ContactFloatView;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/alibaba/android/teleconf/widget/ContactFloatView$1;->c:Lcom/alibaba/android/teleconf/widget/ContactFloatView;

    iput-object p2, p0, Lcom/alibaba/android/teleconf/widget/ContactFloatView$1;->a:Leym;

    iput-object p3, p0, Lcom/alibaba/android/teleconf/widget/ContactFloatView$1;->b:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "avatarName"    # Ljava/lang/String;
    .param p2, "nickName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 99
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ContactFloatView$1;->c:Lcom/alibaba/android/teleconf/widget/ContactFloatView;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/ContactFloatView$1;->a:Leym;

    iget-object v1, v1, Leym;->e:Ljava/lang/String;

    invoke-static {v0, p2, v1}, Lcom/alibaba/android/teleconf/widget/ContactFloatView;->a(Lcom/alibaba/android/teleconf/widget/ContactFloatView;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 101
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ContactFloatView$1;->c:Lcom/alibaba/android/teleconf/widget/ContactFloatView;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/widget/ContactFloatView;->a(Lcom/alibaba/android/teleconf/widget/ContactFloatView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/ContactFloatView$1;->a:Leym;

    iget-object v1, v1, Leym;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    :cond_0
    :goto_0
    invoke-static {}, Leyu;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 107
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ContactFloatView$1;->c:Lcom/alibaba/android/teleconf/widget/ContactFloatView;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/widget/ContactFloatView;->b(Lcom/alibaba/android/teleconf/widget/ContactFloatView;)Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/ContactFloatView$1;->b:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :cond_1
    return-void

    .line 103
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ContactFloatView$1;->c:Lcom/alibaba/android/teleconf/widget/ContactFloatView;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/widget/ContactFloatView;->a(Lcom/alibaba/android/teleconf/widget/ContactFloatView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
