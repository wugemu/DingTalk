.class final Lehu$1;
.super Lcmi;
.source "MeetingRoomIServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lehu;->a(Legz;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Lehi;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcma;


# direct methods
.method constructor <init>(Lcma;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lehu$1;->a:Lcma;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 59
    iget-object v0, p0, Lehu$1;->a:Lcma;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lehu$1;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :cond_0
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 49
    check-cast p1, Lehi;

    .line 1052
    iget-object v0, p0, Lehu$1;->a:Lcma;

    if-eqz v0, :cond_0

    .line 1053
    iget-object v0, p0, Lehu$1;->a:Lcma;

    invoke-interface {v0, p1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 49
    :cond_0
    return-void
.end method
