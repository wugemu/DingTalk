.class final Ldnb$1;
.super Ljava/lang/Object;
.source "BackgroundMdParser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldnb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Ldnh;

.field final synthetic c:Ldnb;


# direct methods
.method constructor <init>(Ldnb;JLdnh;)V
    .locals 0
    .param p1, "this$0"    # Ldnb;

    .prologue
    .line 32
    iput-object p1, p0, Ldnb$1;->c:Ldnb;

    iput-wide p2, p0, Ldnb$1;->a:J

    iput-object p4, p0, Ldnb$1;->b:Ldnh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 35
    iget-object v1, p0, Ldnb$1;->c:Ldnb;

    .line 1013
    iget-boolean v1, v1, Ldnb;->c:Z

    .line 35
    if-eqz v1, :cond_1

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 38
    :cond_1
    iget-object v1, p0, Ldnb$1;->c:Ldnb;

    .line 2013
    iget-object v1, v1, Ldnb;->b:Ldne;

    .line 2053
    iget-object v1, v1, Ldne;->a:Ldnc;

    .line 38
    iget-wide v2, p0, Ldnb$1;->a:J

    invoke-virtual {v1, v2, v3}, Ldnc;->a(J)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 41
    iget-object v1, p0, Ldnb$1;->c:Ldnb;

    .line 3013
    iget-object v1, v1, Ldnb;->d:Lldm;

    .line 41
    const-string/jumbo v2, "bg-parse "

    iget-wide v4, p0, Ldnb$1;->a:J

    iget-object v3, p0, Ldnb$1;->b:Ldnh;

    invoke-virtual {v3}, Ldnh;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v4, v5, v3}, Ldok;->a(Lldm;Ljava/lang/String;JLjava/lang/String;)Lldd;

    move-result-object v0

    .line 42
    .local v0, "node":Lldd;
    if-eqz v0, :cond_2

    .line 43
    iget-object v1, p0, Ldnb$1;->c:Ldnb;

    .line 4013
    iget-object v1, v1, Ldnb;->b:Ldne;

    .line 4053
    iget-object v1, v1, Ldne;->a:Ldnc;

    .line 43
    iget-wide v2, p0, Ldnb$1;->a:J

    invoke-virtual {v1, v2, v3, v0}, Ldnc;->a(JLjava/lang/Object;)V

    .line 45
    :cond_2
    iget-object v1, p0, Ldnb$1;->c:Ldnb;

    .line 5013
    iget-object v1, v1, Ldnb;->d:Lldm;

    .line 45
    const-string/jumbo v2, "bg-parse "

    iget-wide v4, p0, Ldnb$1;->a:J

    iget-object v3, p0, Ldnb$1;->b:Ldnh;

    invoke-virtual {v3}, Ldnh;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v4, v5, v3}, Ldok;->a(Lldm;Ljava/lang/String;JLjava/lang/String;)Lldd;

    move-result-object v0

    .line 46
    if-eqz v0, :cond_3

    .line 47
    iget-object v1, p0, Ldnb$1;->c:Ldnb;

    .line 6013
    iget-object v1, v1, Ldnb;->b:Ldne;

    .line 6063
    iget-object v1, v1, Ldne;->c:Ldnc;

    .line 47
    iget-wide v2, p0, Ldnb$1;->a:J

    invoke-virtual {v1, v2, v3, v0}, Ldnc;->a(JLjava/lang/Object;)V

    .line 49
    :cond_3
    iget-object v1, p0, Ldnb$1;->c:Ldnb;

    .line 7013
    iget-object v1, v1, Ldnb;->d:Lldm;

    .line 49
    const-string/jumbo v2, "bg-parse "

    iget-wide v4, p0, Ldnb$1;->a:J

    iget-object v3, p0, Ldnb$1;->b:Ldnh;

    invoke-virtual {v3}, Ldnh;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v4, v5, v3}, Ldok;->a(Lldm;Ljava/lang/String;JLjava/lang/String;)Lldd;

    move-result-object v0

    .line 50
    if-eqz v0, :cond_0

    .line 51
    iget-object v1, p0, Ldnb$1;->c:Ldnb;

    .line 8013
    iget-object v1, v1, Ldnb;->b:Ldne;

    .line 8058
    iget-object v1, v1, Ldne;->b:Ldnc;

    .line 51
    iget-wide v2, p0, Ldnb$1;->a:J

    invoke-virtual {v1, v2, v3, v0}, Ldnc;->a(JLjava/lang/Object;)V

    goto :goto_0
.end method
