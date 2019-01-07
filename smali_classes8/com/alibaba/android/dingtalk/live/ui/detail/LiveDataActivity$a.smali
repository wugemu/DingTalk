.class final Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity$a;
.super Ljava/lang/Object;
.source "LiveDataActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 319
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity$a;->a:Ljava/lang/String;

    .line 320
    iput-object p2, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity$a;->b:Ljava/lang/String;

    .line 321
    return-void
.end method
