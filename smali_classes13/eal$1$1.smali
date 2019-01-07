.class final Leal$1$1;
.super Ljava/lang/Object;
.source "PushTaskManager.java"

# interfaces
.implements Lcjs$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leal$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Leal$1;


# direct methods
.method constructor <init>(Leal$1;)V
    .locals 0
    .param p1, "this$1"    # Leal$1;

    .prologue
    .line 280
    iput-object p1, p0, Leal$1$1;->a:Leal$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 283
    const/4 v0, 0x1

    return v0
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 288
    const-string/jumbo v0, "PushTaskManager"

    const-string/jumbo v1, "[showGlobalRemindPopupWindow]show"

    invoke-static {v0, v1}, Lcpv;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    return-void
.end method

.method public final c()V
    .locals 0

    .prologue
    .line 293
    return-void
.end method
