.class final Ljim$1;
.super Ljava/lang/Object;
.source "GlobalClientInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljim;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljim;


# direct methods
.method constructor <init>(Ljim;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Ljim$1;->a:Ljim;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 82
    invoke-static {}, Ljim;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ljif;->a(Landroid/content/Context;)V

    .line 83
    invoke-static {}, Ljim;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/accs/utl/UtilityImpl;->restoreCookie(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljim;->i:Ljava/lang/String;

    .line 87
    return-void
.end method
