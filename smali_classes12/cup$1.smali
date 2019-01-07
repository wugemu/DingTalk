.class final Lcup$1;
.super Lckm$a;
.source "DingToManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lckm$a",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcup;


# direct methods
.method constructor <init>(Lcup;)V
    .locals 0
    .param p1, "this$0"    # Lcup;

    .prologue
    .line 37
    iput-object p1, p0, Lcup$1;->a:Lcup;

    invoke-direct {p0}, Lckm$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 37
    .line 1041
    iget-object v0, p0, Lcup$1;->a:Lcup;

    invoke-static {v0}, Lcup;->a(Lcup;)V

    .line 37
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x1

    return v0
.end method
