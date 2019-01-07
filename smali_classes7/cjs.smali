.class public final Lcjs;
.super Ljava/lang/Object;
.source "FloatWindowShowObject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcjs$a;,
        Lcjs$b;
    }
.end annotation


# instance fields
.field a:I

.field b:Ljava/lang/String;

.field c:Lcom/alibaba/android/dingtalkbase/floatwindow/FloatBaseView;

.field d:Lcjs$b;

.field e:Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/alibaba/android/dingtalkbase/floatwindow/FloatBaseView;Lcjs$b;Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "floatView"    # Lcom/alibaba/android/dingtalkbase/floatwindow/FloatBaseView;
    .param p4, "showDelegate"    # Lcjs$b;
    .param p5, "displayAsyncObject"    # Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Lcjs;->a:I

    .line 34
    iput-object p2, p0, Lcjs;->b:Ljava/lang/String;

    .line 35
    iput-object p3, p0, Lcjs;->c:Lcom/alibaba/android/dingtalkbase/floatwindow/FloatBaseView;

    .line 36
    iput-object p4, p0, Lcjs;->d:Lcjs$b;

    .line 37
    iput-object p5, p0, Lcjs;->e:Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;

    .line 38
    return-void
.end method
