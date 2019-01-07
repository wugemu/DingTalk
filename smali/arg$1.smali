.class final Larg$1;
.super Ljava/lang/Object;
.source "CalendarDiurnalScaleManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Larg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Larg;


# direct methods
.method constructor <init>(Larg;)V
    .locals 0
    .param p1, "this$0"    # Larg;

    .prologue
    .line 21
    iput-object p1, p0, Larg$1;->a:Larg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 24
    const-string/jumbo v0, "pref_key_calendar_diurnal_view_scale"

    iget-object v1, p0, Larg$1;->a:Larg;

    invoke-static {v1}, Larg;->a(Larg;)F

    move-result v1

    invoke-static {v0, v1}, Lcpk;->b(Ljava/lang/String;F)V

    .line 25
    return-void
.end method
