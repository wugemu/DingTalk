.class public final Lade$2;
.super Ljava/lang/Object;
.source "AvatarManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:Lade$b;

.field final synthetic e:Lade;


# direct methods
.method public constructor <init>(Lade;Ljava/lang/String;Ljava/lang/String;ILade$b;)V
    .locals 0
    .param p1, "this$0"    # Lade;

    .prologue
    .line 145
    iput-object p1, p0, Lade$2;->e:Lade;

    iput-object p2, p0, Lade$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lade$2;->b:Ljava/lang/String;

    iput p4, p0, Lade$2;->c:I

    iput-object p5, p0, Lade$2;->d:Lade$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 147
    iget-object v0, p0, Lade$2;->e:Lade;

    iget-object v1, p0, Lade$2;->a:Ljava/lang/String;

    iget-object v2, p0, Lade$2;->b:Ljava/lang/String;

    iget v3, p0, Lade$2;->c:I

    iget-object v4, p0, Lade$2;->d:Lade$b;

    invoke-static {v0, v1, v2, v3, v4}, Lade;->a(Lade;Ljava/lang/String;Ljava/lang/String;ILade$b;)V

    .line 148
    return-void
.end method
