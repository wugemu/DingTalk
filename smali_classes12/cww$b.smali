.class final Lcww$b;
.super Ljava/lang/Object;
.source "RemoveMyAddedMembersAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcww;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field d:Landroid/view/View;

.field e:Landroid/view/View;

.field f:J

.field g:Ldht;

.field h:J

.field final synthetic i:Lcww;


# direct methods
.method public constructor <init>(Lcww;)V
    .locals 2

    .prologue
    .line 113
    iput-object p1, p0, Lcww$b;->i:Lcww;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    invoke-static {p1}, Lcww;->b(Lcww;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    invoke-static {v0}, Ldjl;->r(Lcom/alibaba/wukong/im/Conversation;)J

    move-result-wide v0

    iput-wide v0, p0, Lcww$b;->h:J

    .line 115
    return-void
.end method
