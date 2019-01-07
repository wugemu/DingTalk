.class public final Lcjs$a;
.super Ljava/lang/Object;
.source "FloatWindowShowObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcjs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lcjs$b;

.field public b:Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Lcom/alibaba/android/dingtalkbase/floatwindow/FloatBaseView;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/alibaba/android/dingtalkbase/floatwindow/FloatBaseView;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "floatView"    # Lcom/alibaba/android/dingtalkbase/floatwindow/FloatBaseView;

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput p1, p0, Lcjs$a;->c:I

    .line 76
    iput-object p2, p0, Lcjs$a;->d:Ljava/lang/String;

    .line 77
    iput-object p3, p0, Lcjs$a;->e:Lcom/alibaba/android/dingtalkbase/floatwindow/FloatBaseView;

    .line 78
    return-void
.end method


# virtual methods
.method public final a()Lcjs;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 91
    new-instance v0, Lcjs;

    iget v1, p0, Lcjs$a;->c:I

    iget-object v2, p0, Lcjs$a;->d:Ljava/lang/String;

    iget-object v3, p0, Lcjs$a;->e:Lcom/alibaba/android/dingtalkbase/floatwindow/FloatBaseView;

    iget-object v4, p0, Lcjs$a;->a:Lcjs$b;

    iget-object v5, p0, Lcjs$a;->b:Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;

    invoke-direct/range {v0 .. v5}, Lcjs;-><init>(ILjava/lang/String;Lcom/alibaba/android/dingtalkbase/floatwindow/FloatBaseView;Lcjs$b;Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;)V

    return-object v0
.end method
