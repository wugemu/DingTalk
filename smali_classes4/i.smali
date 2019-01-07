.class public Li;
.super Ljava/lang/Object;
.source "CustomTabsClient.java"


# instance fields
.field private final a:Lm;

.field private final b:Landroid/content/ComponentName;


# direct methods
.method constructor <init>(Lm;Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "service"    # Lm;
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Li;->a:Lm;

    .line 51
    iput-object p2, p0, Li;->b:Landroid/content/ComponentName;

    .line 52
    return-void
.end method


# virtual methods
.method public final a(J)Z
    .locals 4
    .param p1, "flags"    # J

    .prologue
    .line 170
    :try_start_0
    iget-object v0, p0, Li;->a:Lm;

    const-wide/16 v2, 0x0

    invoke-interface {v0, v2, v3}, Lm;->a(J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 172
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method
