.class final Ldiw$4;
.super Ljava/lang/Object;
.source "CalendarUtil.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldiw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/Callback;


# direct methods
.method constructor <init>(Lcom/alibaba/wukong/Callback;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Ldiw$4;->a:Lcom/alibaba/wukong/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 152
    return-void
.end method

.method public final a(J)V
    .locals 3
    .param p1, "timeMillis"    # J

    .prologue
    .line 147
    iget-object v0, p0, Ldiw$4;->a:Lcom/alibaba/wukong/Callback;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 148
    return-void
.end method
