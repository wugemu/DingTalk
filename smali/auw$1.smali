.class final Lauw$1;
.super Ljava/lang/Object;
.source "ItemSettingHolder.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lauw;->a(Lauz;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lauw;


# direct methods
.method constructor <init>(Lauw;)V
    .locals 0
    .param p1, "this$0"    # Lauw;

    .prologue
    .line 55
    iput-object p1, p0, Lauw$1;->a:Lauw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 0
    .param p1, "valueChanged"    # F

    .prologue
    .line 58
    return-void
.end method

.method public final a(Z)V
    .locals 2
    .param p1, "check"    # Z

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 62
    iget-object v0, p0, Lauw$1;->a:Lauw;

    iget-object v0, v0, Lauw;->c:Laus;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lauw$1;->a:Lauw;

    iget-object v0, v0, Lauw;->c:Laus;

    iget-object v1, p0, Lauw$1;->a:Lauw;

    invoke-static {v1}, Lauw;->a(Lauw;)Lava;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Laus;->a(Lava;Z)V

    .line 66
    :cond_0
    iget-object v0, p0, Lauw$1;->a:Lauw;

    invoke-static {v0}, Lauw;->a(Lauw;)Lava;

    move-result-object v0

    .line 1048
    iput-boolean p1, v0, Lava;->d:Z

    .line 1176
    const-string/jumbo v0, "ding_calendar_drawer_chkbox_click"

    invoke-static {v0}, Lavw;->c(Ljava/lang/String;)V

    .line 69
    return-void
.end method
