.class final Ljbe$a;
.super Ljava/lang/Object;
.source "LogProcessor.java"

# interfaces
.implements Ljcd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljbe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Ljbe;

.field private b:Lcom/loc/an;


# direct methods
.method constructor <init>(Ljbe;Lcom/loc/an;)V
    .locals 0

    iput-object p1, p0, Ljbe$a;->a:Ljbe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ljbe$a;->b:Lcom/loc/an;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 0
    :try_start_0
    iget-object v0, p0, Ljbe$a;->b:Lcom/loc/an;

    iget-object v1, p0, Ljbe$a;->a:Ljbe;

    .line 1000
    iget v1, v1, Ljbe;->b:I

    .line 0
    invoke-static {v1}, Ljeo;->a(I)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2000
    :try_start_1
    invoke-virtual {v0, p1, v1}, Lcom/loc/an;->a(Ljava/lang/String;Ljava/lang/Class;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 0
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
