.class final Lfgn$4;
.super Ljava/lang/Object;
.source "JoinGroupRequestAdapter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfgn;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:[Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

.field final synthetic b:Lfgn$a;

.field final synthetic c:Lcom/alibaba/wukong/idl/im/models/FetchJoinGroupValidationModel;

.field final synthetic d:Landroid/view/ViewGroup;

.field final synthetic e:Lfgn;


# direct methods
.method constructor <init>(Lfgn;[Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Lfgn$a;Lcom/alibaba/wukong/idl/im/models/FetchJoinGroupValidationModel;Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "this$0"    # Lfgn;

    .prologue
    .line 208
    iput-object p1, p0, Lfgn$4;->e:Lfgn;

    iput-object p2, p0, Lfgn$4;->a:[Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iput-object p3, p0, Lfgn$4;->b:Lfgn$a;

    iput-object p4, p0, Lfgn$4;->c:Lcom/alibaba/wukong/idl/im/models/FetchJoinGroupValidationModel;

    iput-object p5, p0, Lfgn$4;->d:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 208
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 1211
    if-eqz p1, :cond_0

    .line 1212
    iget-object v0, p0, Lfgn$4;->a:[Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 1214
    iget-object v0, p0, Lfgn$4;->b:Lfgn$a;

    iget-object v0, v0, Lfgn$a;->f:Lcom/alibaba/wukong/idl/im/models/FetchJoinGroupValidationModel;

    iget-object v1, p0, Lfgn$4;->c:Lcom/alibaba/wukong/idl/im/models/FetchJoinGroupValidationModel;

    if-ne v0, v1, :cond_0

    .line 1215
    iget-object v0, p0, Lfgn$4;->b:Lfgn$a;

    iget-object v0, v0, Lfgn$a;->b:Landroid/widget/TextView;

    invoke-static {p1}, Lflr;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1216
    iget-object v0, p0, Lfgn$4;->b:Lfgn$a;

    iget-object v1, v0, Lfgn$a;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    iget-object v3, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    iget-object v0, p0, Lfgn$4;->d:Landroid/view/ViewGroup;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v1, v2, v3, v0}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 208
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 227
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 223
    return-void
.end method
