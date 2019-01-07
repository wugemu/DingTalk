.class public abstract Lcom/alibaba/android/ding/activity/DingMembersActivity$a;
.super Ljava/lang/Object;
.source "DingMembersActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/activity/DingMembersActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "a"
.end annotation


# instance fields
.field final synthetic b:Lcom/alibaba/android/ding/activity/DingMembersActivity;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/ding/activity/DingMembersActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/activity/DingMembersActivity;

    .prologue
    .line 504
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingMembersActivity$a;->b:Lcom/alibaba/android/ding/activity/DingMembersActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(I)V
.end method

.method public abstract a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V
.end method

.method public abstract a(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract b()I
.end method

.method public abstract b(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V
.end method

.method public abstract b(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract c()V
.end method
