.class public final Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$c;
.super Ljava/lang/Object;
.source "FloatDisplayAsyncObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;",
            ">;"
        }
    .end annotation
.end field

.field b:Lcom/alibaba/android/dingtalkbase/widgets/popup/Orientation;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    sget-object v0, Lcom/alibaba/android/dingtalkbase/widgets/popup/Orientation;->HORIZONTAL:Lcom/alibaba/android/dingtalkbase/widgets/popup/Orientation;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$c;->b:Lcom/alibaba/android/dingtalkbase/widgets/popup/Orientation;

    return-void
.end method
