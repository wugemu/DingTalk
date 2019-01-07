.class abstract Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$c;
.super Ljava/lang/Object;
.source "AttendanceHomeActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcma",
        "<TT;>;"
    }
.end annotation


# instance fields
.field a:Z

.field b:I

.field final synthetic c:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;I)V
    .locals 1
    .param p2, "key"    # I

    .prologue
    .line 1449
    .local p0, "this":Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$c;, "Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$c<TT;>;"
    iput-object p1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$c;->c:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1446
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$c;->a:Z

    .line 1450
    iput p2, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$c;->b:I

    .line 1451
    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public onDataReceived(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 1459
    .local p0, "this":Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$c;, "Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$c<TT;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$c;->a:Z

    if-nez v0, :cond_0

    .line 1460
    invoke-virtual {p0, p1}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$c;->a(Ljava/lang/Object;)V

    .line 1462
    :cond_0
    return-void
.end method

.method public onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 1477
    .local p0, "this":Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$c;, "Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$c<TT;>;"
    iget-boolean v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$c;->a:Z

    if-nez v0, :cond_0

    .line 1478
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1480
    :cond_0
    return-void
.end method

.method public onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 1471
    .local p0, "this":Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$c;, "Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$c<TT;>;"
    return-void
.end method
