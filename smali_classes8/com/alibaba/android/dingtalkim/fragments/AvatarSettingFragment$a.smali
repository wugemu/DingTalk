.class final Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$a;
.super Ljava/lang/Object;
.source "AvatarSettingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "t"    # I
    .param p2, "i"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput p1, p0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$a;->a:I

    .line 73
    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$a;->b:Ljava/lang/String;

    .line 74
    return-void
.end method
