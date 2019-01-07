.class final Lbbk$16;
.super Lbbx;
.source "DataSourceRemote.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbk;->a(Lbcx;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbbx",
        "<",
        "Lbcj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbbk;


# direct methods
.method constructor <init>(Lbbk;Lcmi;)V
    .locals 0
    .param p1, "this$0"    # Lbbk;
    .param p2, "callback"    # Lcmi;

    .prologue
    .line 373
    iput-object p1, p0, Lbbk$16;->a:Lbbk;

    invoke-direct {p0, p2}, Lbbx;-><init>(Lcmi;)V

    return-void
.end method
