.class public final Lavp$2;
.super Ljava/lang/Object;
.source "CalendarFloatWindowUtil.java"

# interfaces
.implements Lcjs$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lavp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lapb;


# direct methods
.method public constructor <init>(ILapb;)V
    .locals 0

    .prologue
    .line 73
    iput p1, p0, Lavp$2;->a:I

    iput-object p2, p0, Lavp$2;->b:Lapb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 76
    iget v0, p0, Lavp$2;->a:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lavp$2;->b:Lapb;

    .line 1047
    iget-wide v0, v0, Lapb;->b:J

    .line 77
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lapu;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 82
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[CalendarAlert] show"

    aput-object v2, v0, v1

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 83
    invoke-static {v3}, Lavw;->a(Z)V

    .line 84
    return-void
.end method

.method public final c()V
    .locals 0

    .prologue
    .line 88
    return-void
.end method
