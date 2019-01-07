.class final Lgyo$a;
.super Ljava/lang/Object;
.source "FieldSerializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgyo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Lgys;

.field b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lgys;Ljava/lang/Class;)V
    .locals 0
    .param p1, "fieldSerializer"    # Lgys;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgys;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 159
    .local p2, "runtimeFieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput-object p1, p0, Lgyo$a;->a:Lgys;

    .line 161
    iput-object p2, p0, Lgyo$a;->b:Ljava/lang/Class;

    .line 162
    return-void
.end method
