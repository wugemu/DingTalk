.class final Lcwg$a;
.super Ljava/lang/Object;
.source "MemberAvatarListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcwg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field b:Landroid/widget/TextView;

.field final synthetic c:Lcwg;


# direct methods
.method constructor <init>(Lcwg;)V
    .locals 0
    .param p1, "this$0"    # Lcwg;

    .prologue
    .line 53
    iput-object p1, p0, Lcwg$a;->c:Lcwg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
