.class final Lcwf$a;
.super Ljava/lang/Object;
.source "MemberAvatarAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcwf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field final synthetic b:Lcwf;


# direct methods
.method constructor <init>(Lcwf;)V
    .locals 0
    .param p1, "this$0"    # Lcwf;

    .prologue
    .line 49
    iput-object p1, p0, Lcwf$a;->b:Lcwf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
