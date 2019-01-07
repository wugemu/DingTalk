.class public final Lizb$a;
.super Ljava/lang/Object;
.source "MarshalMeta.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lizb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Liyz;",
            ">;"
        }
    .end annotation
.end field

.field public c:Z


# direct methods
.method private constructor <init>(Ljava/lang/Class;Ljava/util/List;Z)V
    .locals 1
    .param p3, "canAccessDecodeMethod"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/List",
            "<",
            "Liyz;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p1, "marshalClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "fields":Ljava/util/List;, "Ljava/util/List<Liyz;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lizb$a;->c:Z

    .line 58
    iput-object p1, p0, Lizb$a;->a:Ljava/lang/Class;

    .line 59
    iput-object p2, p0, Lizb$a;->b:Ljava/util/List;

    .line 60
    iput-boolean p3, p0, Lizb$a;->c:Z

    .line 61
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Class;Ljava/util/List;ZB)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Class;
    .param p2, "x1"    # Ljava/util/List;
    .param p3, "x2"    # Z

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lizb$a;-><init>(Ljava/lang/Class;Ljava/util/List;Z)V

    return-void
.end method
