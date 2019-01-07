.class public final Lffk;
.super Ljava/lang/Object;
.source "MiscUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "Listener:Ljava/lang/Object;",
            ">(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class",
            "<T",
            "Listener;",
            ">;T",
            "Listener;",
            ")T",
            "Listener;"
        }
    .end annotation

    .prologue
    .line 22
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TListener;>;"
    .local p2, "listener":Ljava/lang/Object;, "TListener;"
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 25
    .end local p2    # "listener":Ljava/lang/Object;, "TListener;"
    :goto_0
    return-object p2

    .restart local p2    # "listener":Ljava/lang/Object;, "TListener;"
    :cond_0
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v0

    invoke-interface {v0, p2, p1, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0
.end method
