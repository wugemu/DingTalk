.class final Lhky$5$2;
.super Ljava/lang/Object;
.source "AutoAttendanceModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhky$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhky$5;


# direct methods
.method constructor <init>(Lhky$5;)V
    .locals 0
    .param p1, "this$0"    # Lhky$5;

    .prologue
    .line 1027
    iput-object p1, p0, Lhky$5$2;->a:Lhky$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 1030
    invoke-static {}, Lhpw;->a()Lhpw;

    move-result-object v0

    iget-object v1, p0, Lhky$5$2;->a:Lhky$5;

    iget-object v1, v1, Lhky$5;->a:Lhkz;

    iget-object v1, v1, Lhkz;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lhpw;->a(Ljava/lang/String;)V

    .line 1031
    return-void
.end method
