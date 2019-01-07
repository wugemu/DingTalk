.class public final Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;
.super Ljava/lang/Object;
.source "FloatDisplayAsyncObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/text/SpannableString;

.field public b:Landroid/view/View$OnClickListener;

.field public c:Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$ActionStyle;

.field d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    sget-object v0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$ActionStyle;->LINK:Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$ActionStyle;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;->c:Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$ActionStyle;

    .line 184
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;->d:Z

    return-void
.end method
