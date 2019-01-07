.class final Lapw$4$1;
.super Ljava/lang/Object;
.source "CalendarDataCenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapw$4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lapw$4;


# direct methods
.method constructor <init>(Lapw$4;)V
    .locals 0
    .param p1, "this$1"    # Lapw$4;

    .prologue
    .line 1041
    iput-object p1, p0, Lapw$4$1;->a:Lapw$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 1041
    check-cast p1, Ljava/lang/Boolean;

    .line 2044
    iget-object v0, p0, Lapw$4$1;->a:Lapw$4;

    iget-object v0, v0, Lapw$4;->b:Lcom/alibaba/wukong/Callback;

    invoke-static {v0, p1}, Lcny;->a(Lcom/alibaba/wukong/Callback;Ljava/lang/Object;)V

    .line 1041
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 1053
    iget-object v0, p0, Lapw$4$1;->a:Lapw$4;

    iget-object v0, v0, Lapw$4;->b:Lcom/alibaba/wukong/Callback;

    invoke-static {v0, p1, p2}, Lcny;->a(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    .line 1054
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 1049
    return-void
.end method
