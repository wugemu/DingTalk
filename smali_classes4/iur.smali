.class public final Liur;
.super Ljava/lang/Object;
.source "ToygerConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Liur$a;,
        Liur$c;,
        Liur$b;,
        Liur$d;
    }
.end annotation


# instance fields
.field public a:Liur$d;

.field public b:Liur$b;

.field public c:Liur$c;

.field public d:Liur$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Liur$c;

    invoke-direct {v0}, Liur$c;-><init>()V

    iput-object v0, p0, Liur;->c:Liur$c;

    .line 34
    new-instance v0, Liur$d;

    invoke-direct {v0}, Liur$d;-><init>()V

    iput-object v0, p0, Liur;->a:Liur$d;

    .line 35
    new-instance v0, Liur$b;

    invoke-direct {v0}, Liur$b;-><init>()V

    iput-object v0, p0, Liur;->b:Liur$b;

    .line 36
    new-instance v0, Liur$a;

    invoke-direct {v0}, Liur$a;-><init>()V

    iput-object v0, p0, Liur;->d:Liur$a;

    .line 37
    return-void
.end method
