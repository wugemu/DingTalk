.class final Lcom/alibaba/android/user/settings/fragment/MineFragment$9;
.super Ljava/lang/Object;
.source "MineFragment.java"

# interfaces
.implements Lfuj$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/settings/fragment/MineFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/settings/fragment/MineFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/fragment/MineFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/settings/fragment/MineFragment;

    .prologue
    .line 1153
    iput-object p1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$9;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;)V
    .locals 1
    .param p1, "object"    # Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    .prologue
    .line 1156
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$9;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-static {v0, p1}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->a(Lcom/alibaba/android/user/settings/fragment/MineFragment;Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;)V

    .line 1157
    return-void
.end method
