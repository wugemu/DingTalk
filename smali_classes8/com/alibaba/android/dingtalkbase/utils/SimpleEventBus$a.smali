.class final Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$a;
.super Ljava/lang/Object;
.source "SimpleEventBus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$c;

.field public final b:Z

.field public final c:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$c;ZLandroid/app/Activity;)V
    .locals 0
    .param p1, "l"    # Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$c;
    .param p2, "r"    # Z
    .param p3, "a"    # Landroid/app/Activity;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$a;->a:Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$c;

    .line 44
    iput-boolean p2, p0, Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$a;->b:Z

    .line 45
    iput-object p3, p0, Lcom/alibaba/android/dingtalkbase/utils/SimpleEventBus$a;->c:Landroid/app/Activity;

    .line 46
    return-void
.end method
