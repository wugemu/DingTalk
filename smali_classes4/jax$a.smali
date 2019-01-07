.class public final Ljax$a;
.super Ljava/lang/Object;
.source "Update.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljax;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljax$a$a;
    }
.end annotation


# instance fields
.field public a:Z

.field public b:Ljay;

.field c:Ljava/lang/String;

.field d:I

.field e:Ljax$b;

.field public final synthetic f:Ljax;


# direct methods
.method private constructor <init>(Ljax;Ljay;Ljava/lang/String;)V
    .locals 1
    .param p2, "info"    # Ljay;
    .param p3, "appName"    # Ljava/lang/String;

    .prologue
    .line 244
    iput-object p1, p0, Ljax$a;->f:Ljax;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljax$a;->a:Z

    .line 241
    const/4 v0, -0x1

    iput v0, p0, Ljax$a;->d:I

    .line 246
    if-nez p2, :cond_0

    .line 247
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljax$a;->a:Z

    .line 249
    :cond_0
    iput-object p2, p0, Ljax$a;->b:Ljay;

    .line 250
    iput-object p3, p0, Ljax$a;->c:Ljava/lang/String;

    .line 252
    return-void
.end method

.method synthetic constructor <init>(Ljax;Ljay;Ljava/lang/String;B)V
    .locals 0
    .param p1, "x0"    # Ljax;
    .param p2, "x1"    # Ljay;
    .param p3, "x2"    # Ljava/lang/String;

    .prologue
    .line 236
    invoke-direct {p0, p1, p2, p3}, Ljax$a;-><init>(Ljax;Ljay;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 314
    iget-object v0, p0, Ljax$a;->f:Ljax;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljax;->a(Ljax;Z)Z

    .line 315
    iget-boolean v0, p0, Ljax$a;->a:Z

    if-eqz v0, :cond_1

    .line 320
    :cond_0
    :goto_0
    return-void

    .line 317
    :cond_1
    iget-object v0, p0, Ljax$a;->f:Ljax;

    invoke-static {v0}, Ljax;->b(Ljax;)Ljau;

    move-result-object v0

    invoke-interface {v0}, Ljau;->a()V

    .line 318
    iget-object v0, p0, Ljax$a;->e:Ljax$b;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Ljax$a;->e:Ljax$b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljax$b;->cancel(Z)Z

    goto :goto_0
.end method
