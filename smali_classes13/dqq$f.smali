.class final Ldqq$f;
.super Ljava/lang/Object;
.source "ChatMsgListModel.java"

# interfaces
.implements Ldqq$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldqq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "f"
.end annotation


# instance fields
.field final synthetic a:Ldqq;

.field private b:Ldqq$d;


# direct methods
.method public constructor <init>(Ldqq;Ldqq$d;)V
    .locals 0
    .param p2, "listener"    # Ldqq$d;

    .prologue
    .line 144
    iput-object p1, p0, Ldqq$f;->a:Ldqq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput-object p2, p0, Ldqq$f;->b:Ldqq$d;

    .line 146
    return-void
.end method


# virtual methods
.method public final a(IILjava/lang/Object;)V
    .locals 1
    .param p1, "mode"    # I
    .param p2, "anchorPosition"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 180
    iget-object v0, p0, Ldqq$f;->b:Ldqq$d;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Ldqq$f;->b:Ldqq$d;

    invoke-interface {v0, p1, p2, p3}, Ldqq$d;->a(IILjava/lang/Object;)V

    .line 183
    :cond_0
    return-void
.end method

.method public final a(ILjava/lang/Object;)V
    .locals 1
    .param p1, "mode"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 150
    iget-object v0, p0, Ldqq$f;->b:Ldqq$d;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Ldqq$f;->b:Ldqq$d;

    invoke-interface {v0, p1, p2}, Ldqq$d;->a(ILjava/lang/Object;)V

    .line 153
    :cond_0
    return-void
.end method

.method public final a(ILjava/lang/Object;Z)V
    .locals 1
    .param p1, "mode"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "should"    # Z

    .prologue
    .line 157
    iget-object v0, p0, Ldqq$f;->a:Ldqq;

    invoke-virtual {v0, p0}, Ldqq;->b(Ldqq$d;)V

    .line 158
    iget-object v0, p0, Ldqq$f;->b:Ldqq$d;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Ldqq$f;->b:Ldqq$d;

    invoke-interface {v0, p1, p2, p3}, Ldqq$d;->a(ILjava/lang/Object;Z)V

    .line 161
    :cond_0
    return-void
.end method

.method public final a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "mode"    # I
    .param p2, "code"    # Ljava/lang/String;
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 165
    iget-object v0, p0, Ldqq$f;->a:Ldqq;

    invoke-virtual {v0, p0}, Ldqq;->b(Ldqq$d;)V

    .line 166
    iget-object v0, p0, Ldqq$f;->b:Ldqq$d;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Ldqq$f;->b:Ldqq$d;

    invoke-interface {v0, p1, p2, p3, p4}, Ldqq$d;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 169
    :cond_0
    return-void
.end method

.method public final b(ILjava/lang/Object;)V
    .locals 1
    .param p1, "mode"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 173
    iget-object v0, p0, Ldqq$f;->b:Ldqq$d;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Ldqq$f;->b:Ldqq$d;

    invoke-interface {v0, p1, p2}, Ldqq$d;->b(ILjava/lang/Object;)V

    .line 176
    :cond_0
    return-void
.end method

.method public final c(ILjava/lang/Object;)V
    .locals 1
    .param p1, "mode"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 187
    iget-object v0, p0, Ldqq$f;->a:Ldqq;

    invoke-virtual {v0, p0}, Ldqq;->b(Ldqq$d;)V

    .line 188
    iget-object v0, p0, Ldqq$f;->b:Ldqq$d;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Ldqq$f;->b:Ldqq$d;

    invoke-interface {v0, p1, p2}, Ldqq$d;->c(ILjava/lang/Object;)V

    .line 191
    :cond_0
    return-void
.end method
